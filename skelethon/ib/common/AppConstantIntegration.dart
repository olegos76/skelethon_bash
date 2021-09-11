const APP_CODE = 'skelethon';

const PUSH_TOPIC_MAIN = 'mess_' + APP_CODE; // +_uCode_aCode lib/common/UtilPushNotification.dart:69
const PUSH_TOPIC_REG = 'mess_reg_' + APP_CODE;
const PUSH_TOPIC_DEP = 'mess_dep_' + APP_CODE;

const API_ENDPOINT = 'https://api.zaebapp.com/api/v2/' + APP_CODE + '/';
const API_ENDPOINT_TRACK = 'https://api.zaebapp.com/api/v2/track/' + APP_CODE + '/';

const PUSH_CHANNEL_ID = 'high_importance_channel';
const PUSH_CHANNEL_NAME = 'High Importance Notifications';
const PUSH_CHANNEL_DESCRIPTION = 'This channel is used for important notifications';
