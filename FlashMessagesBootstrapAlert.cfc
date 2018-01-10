component {
  init(){
    this.version="2.0";
    return this;
  }
  flashMessages(){
  	// call the core flashMessages function to get the prebuilt markup block
  	var result = core.flashMessages(argumentCollection=arguments);

  	// if block is not empty lets Bootstrapify it
  	if result neq "" {
  		// remove the bounding DIV tags
		result = replace(result, '<div class="flash-messages">', '');
		result = replace(result, '</div>', '');

		// change the bounding P tags to DIV tags
		result = replace(result, '<p', '<div', 'all');
		result = replace(result, '</p>', '</div>', 'all');

		// build the string to append for the button and close event
		var append = ' role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';

		// handle the four standard Bootstrap alert types
		result = replace(result, 'class="success-message">', 'class="alert alert-success alert-dismissible"' & append, 'all');
		result = replace(result, 'class="info-message">', 'class="alert alert-info alert-dismissible"' & append, 'all');
		result = replace(result, 'class="warning-message">', 'class="alert alert-warning alert-dismissible"' & append, 'all');
		result = replace(result, 'class="danger-message">', 'class="alert alert-danger alert-dismissible"' & append, 'all');

		// convert an error key in the flash structure to a standard Bootstrap danger alert
		result = replace(result, 'class="error-message">', 'class="alert alert-danger alert-dismissible"' & append, 'all');

		// convert any other key in the flash structure to a standard Bootstrap info alert
		result = reReplace(result, 'class=".*?-message">', 'class="alert alert-info alert-dismissible"' & append, 'all');
  	}
  	return result;
  }
}
