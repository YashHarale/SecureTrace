'use strict';

var QRious = require('qrious-core');

var BrowserElementService = require('./service/element/BrowserElementService');

QRious.use(new BrowserElementService());

module.exports = QRious;
