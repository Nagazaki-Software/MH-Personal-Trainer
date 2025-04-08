const functions = require("firebase-functions");
const stripe = require("stripe")(
  "pk_test_51R56vx00hfXDRSJ7QxhHhvu99CvELyuBXxsjekuJ4LAwa1SeGfbJRvcWKi0QaQTujnSGjAcOMlkm7dDiWcMX2uZR0024pHttT6",
); // Substitua pela sua chave secreta

exports.initStripeSubscription = functions.https.onCall(
  async (data, context) => {
    // Verifique se o usuário está autenticado
    if (!context.auth) {
      return { success: false, error: "Usuário não autenticado" };
    }

    const email = data.email; // E-mail do cliente
    const priceId = data.priceId; // O ID do plano de assinatura

    try {
      // Cria um cliente no Stripe, se não existir
      let customer = await stripe.customers.list({
        email: email,
        limit: 1,
      });

      if (customer.data.length == 0) {
        customer = await stripe.customers.create({
          email: email,
        });
      } else {
        customer = customer.data[0];
      }

      // Cria a assinatura usando o priceId
      const subscription = await stripe.subscriptions.create({
        customer: customer.id,
        items: [
          {
            price: priceId, // ID do plano de assinatura
          },
        ],
        expand: ["latest_invoice.payment_intent"],
      });

      return {
        success: true,
        clientSecret: subscription.latest_invoice.payment_intent.client_secret,
      };
    } catch (error) {
      return { success: false, error: error.message };
    }
  },
);
