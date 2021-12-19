class UsersModel{
  String sess_bp_week;
  String sess_bp_user_id;
  String sess_bp_username;
  String sess_bp_name;
  String sess_bp_adr;

  String sess_bp_emp;
  String sess_bp_privs;
  String sess_bp_currency;
  String sess_bp_gst;
  String sess_bp_vat;
  String sess_bp_tax;
  String sess_bp_salesman_commission;
  String sess_bp_agent_commision;
  String sess_bp_timestamp;
  String sess_bp_print_header;
  String sess_bp_print_urdu_invoice;
  String sess_bp_print_header_note;
  String sess_bp_print_footer_note;
  String sess_bp_print_default_template;
  String sess_bp_barcode;
  String sess_bp_variants;
  String sess_bp_secondary_units;
  String sess_bp_token;

  UsersModel({
    this.sess_bp_week,
    this.sess_bp_user_id,
    this.sess_bp_username,
    this.sess_bp_name,
    this.sess_bp_adr,

    this.sess_bp_emp,
    this.sess_bp_privs,
    this.sess_bp_currency,
    this.sess_bp_gst,
    this.sess_bp_vat,
    this.sess_bp_tax,
    this.sess_bp_salesman_commission,
    this.sess_bp_agent_commision,
    this.sess_bp_timestamp,
    this.sess_bp_print_header,
    this.sess_bp_print_urdu_invoice,
    this.sess_bp_print_header_note,
    this.sess_bp_print_footer_note,
    this.sess_bp_print_default_template,
    this.sess_bp_barcode,
    this.sess_bp_variants,
    this.sess_bp_secondary_units,
    this.sess_bp_token,

  });


  Map<String, dynamic> toMap() {
    return<String,dynamic> {
      "sess_bp_week" : sess_bp_week,
      "sess_bp_user_id" : sess_bp_user_id,
      " sess_bp_username" :sess_bp_username,
      " sess_bp_name" : sess_bp_name,
      "sess_bp_adr" :sess_bp_adr,
      "sess_bp_emp ":sess_bp_emp,
      "sess_bp_privs" :sess_bp_privs,
      "sess_bp_currency ":sess_bp_currency,
      "sess_bp_gst ":sess_bp_gst,
      "sess_bp_vat ":sess_bp_vat,
      "sess_bp_tax ":sess_bp_tax,
      "sess_bp_salesman_commission ":sess_bp_salesman_commission,
      "sess_bp_agent_commision":sess_bp_agent_commision,
      "sess_bp_timestamp ":sess_bp_timestamp,
      "sess_bp_print_header ":sess_bp_print_header,
      "sess_bp_print_urdu_invoice ":sess_bp_print_urdu_invoice,
      "sess_bp_print_header_note" :  sess_bp_print_header_note,
      "sess_bp_print_footer_note ":sess_bp_print_footer_note,
      "sess_bp_print_default_template" :sess_bp_print_default_template,
      "sess_bp_barcode" :sess_bp_barcode,
      "sess_bp_variants ":sess_bp_variants,
      "sess_bp_secondary_units ":sess_bp_secondary_units,
      "sess_bp_token":sess_bp_token,

    };
  }

}