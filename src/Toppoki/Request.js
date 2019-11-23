exports._continue = function(options, request) {
  return function() {
    return request.continue(options);
  };
};

exports._url = function(request) {
    return request.url();
};

exports._headers = function(request) {
    return request.headers();
};
