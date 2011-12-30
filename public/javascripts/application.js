// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function ajax_add_contact() {
	var contact_type = $('new_contact_type').getValue();
	var contact_value = $('new_contact_value').getValue();

	new Ajax.Request('/user/ajax_add_contact', {
		parameters : {'contact_type' : contact_type, 'contact_value' : contact_value},
		onSuccess : function(transport) {
			new Ajax.Updater('contacts_form', '/user/ajax_contacts');
			},
		onFailure : function(transport) {
			window.alert("Chyba při přidávání kontaktu, kontaktujte prosím administrátory");
			}
		}
	);
}
