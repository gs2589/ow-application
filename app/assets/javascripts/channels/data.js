App.messages = App.cable.subscriptions.create('DataChannel', {  
  received: function(data) {
    return $('#data').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    updateReadings(data.rate_array)
    // return "<p> <b>" + data.text + ": </b>" + data.keywords + "</p>";
  }
});