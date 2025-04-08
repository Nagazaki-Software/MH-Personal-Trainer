const admin = require("firebase-admin/app");
admin.initializeApp();

const initStripeSubscription = require("./init_stripe_subscription.js");
exports.initStripeSubscription = initStripeSubscription.initStripeSubscription;
