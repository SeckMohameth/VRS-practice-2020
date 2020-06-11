const { check } = require('express-validator');

exports.userRegisterValidator = [
    check('username')
        .not()
        .isEmpty()
        .withMessage('Please enter a username.'),

    check('name')
        .not()
        .isEmpty()
        .withMessage('Name is required'),

    check('email')
        .isEmail()
        .withMessage('Must be a valid email address'),

    check('password')
        .isLength({ min: 8 })
        .withMessage('Password must be at least 8 characters long'),

    check('birthday')
        .not()
        .isEmpty()
        .withMessage('Please enter your date of birth. Must be 13 or older.')
];

exports.userLoginValidator = [
    check('email')
        .isEmail()
        .withMessage('Must be a valid email address'),

    check('password')
        .isLength({ min: 8 })
        .withMessage('Password must be at least 8 characters long')
];



exports.forgotPasswordValidator = [
    check('email')
        .isEmail()
        .withMessage('Must be a valid email address'),

];

exports.resetPasswordValidator = [
    check('newPassword')
        .isLength({ min: 8 })
        .withMessage('Password must be at least 6 characters long'),
    check('resetPasswordLink')
        .not()
        .isEmpty()
        .withMessage('Token is required')
];