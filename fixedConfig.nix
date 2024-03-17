# This file is generated from the source of gnome-online-accounts
# using https://github.com/zebreus/gnome-online-accounts-config
# Do not edit this file manually.

{ lib, ... }:
with lib;
let
  accountType = { lib, ... }: with lib; {
    freeformType = with lib.types; attrsOf str;

    options = types.submoduleWith {
      modules = [{
        IsLocked = mkOption {
          type = types.nullOr types.str;
          default = true;
          description = ''
            Whether or not the user is discouraged from removing this account.

            Locked accounts can be those that there added by the administrator to
            pre-configure systems in an enterprise deployment. If `true`, the UI
            should prevent, or atleast discourage, removal of these accounts.

            Relevant for all accounts.
          '';
        };
        IsTemporary = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether or not the account is remembered from session to session.

            Temporary accounts are added implicitly when the user is granted
            credentials from some mechanism other than Online Accounts, but that
            Online Accounts still knows how to deal with.

            They are specific to the machine/session and are silently disregarded
            after logout.

            Accounts are permanant by default unless created with [](#opt-service.gnome-online-accounts.accounts._name_.IsTemporary)
            `true` detail.

            Relevant for all accounts.
          '';
        };
        Identity = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            A string that uniquely identifies the account at the provider. This will only be displayed to the user if [](#opt-service.gnome-online-accounts.accounts._name_.PresentationIdentity) is not set.

            Note that this does not need to be unique across providers. For example, if the user is using the same
            email-address for several providers
        

            Relevant for all accounts.
          '';
        };
        PresentationIdentity = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Like the [](#opt-service.gnome-online-accounts.accounts._name_.Identity) property but
            suitable for presentation in an user interface.

            Relevant for all accounts.
          '';
        };
        Provider = mkOption {
          type = types.nullOr types.enum [ exchange fedora google imap_smtp kerberos media-server lastfm owncloud windows_live ];
          default = null;
          description = ''
            The type of the account. This value describes how data is accessed, e.g. what API
            applications should use. Most other options are only relevant for a specific provider.

            Relevant for all accounts.
          '';
        };
        SessionId = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The id of the temporary session if this account is temporary.

            Relevant for all accounts.
          '';
        };
        AcceptSslErrors = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Accept SSL/TLS errors caused by invalid certificates.

            This setting is only used by the exchange and owncloud providers.Use the more specific settings for the other providers.

            Relevant for accounts using the exchange, or owncloud provider.
          '';
        };
        CalendarEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Calendar](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Calendar.html) interface.If the account does not
            provide calendar- like capabilities, this property does nothing.

            Relevant for accounts using the exchange, google, or owncloud provider.
          '';
        };
        ContactsEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Contacts](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Contacts.html) interface.If the account does not
            provide contacts - like capabilities, this property does nothing.

            Relevant for accounts using the exchange, google, or owncloud provider.
          '';
        };
        MailEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Mail](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Mail.html) interface.If the account does not
            provide email - like messaging capabilities, this property does
            nothing.

            If the account uses IMAP / SMTP you also need to set the
            `Enabled` option to the same value.

            Relevant for accounts using the exchange, google, or windows_live provider.
          '';
        };
        Host = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The Exchange server to use. This is always a domain name.
            Use this to determine the [Autodiscover](https://learn.microsoft.com/en-us/exchange/client-developer/exchange-web-services/autodiscover-for-exchange) service endpoints.
      
            eg. if `Host` is `bar.com`, then the possible endpoints are
            `https://bar.com/autodiscover/autodiscover.xml` and
            `https://autodiscover.bar.com/autodiscover/autodiscover.xml`.

            Relevant for accounts using the exchange provider.
          '';
        };
        TicketingEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Ticketing](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Ticketing.html) interface. If the account does not
            provide ticketing-like capabilities, this property does nothing.

            Relevant for accounts using the fedora, or kerberos provider.
          '';
        };
        PreauthenticationSource = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            A preauthentication source used by pkinit (such as PKCS11:libcoolkeypk11.so) for Kerberos

            Relevant for accounts using the fedora, or kerberos provider.
          '';
        };
        FilesEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Files](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Files.html) interface. If the account does not
            provide files-like capabilities, this property does nothing.

            Relevant for accounts using the google, or owncloud provider.
          '';
        };
        PhotosEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Photos](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Photos.html) interface. If the account does not
            provide photos-like capabilities, this property does nothing.

            Relevant for accounts using the google, or media-server provider.
          '';
        };
        PrintersEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
            [org.gnome.OnlineAccounts.Printers](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Printers.html) interface. If the account does not
            provide printers-like capabilities, this property does nothing.

            Relevant for accounts using the google provider.
          '';
        };
        Enabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Enable IMAP and SMTP for the account. You should set
                  `MailEnabled` to the same value.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        ImapAcceptSslErrors = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Accept SSL/TLS errors caused by invalid certificates.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        ImapUseSsl = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether SSL should be used.

            This indicates that SSL should be used on a dedicated port.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        ImapUseTls = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether TLS should be used.

            This indicates that STARTTLS should be used on a standard port
            after the connection has been established to obtain a secure
            channel.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpAcceptSslErrors = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Accept SSL/TLS errors caused by invalid certificates.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpAuthLogin = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether LOGIN authentication should be used.

            This indicates whether the server uses the
            [
            LOGIN](http://msdn.microsoft.com/en-us/library/cc433484(v=EXCHG.80).aspx) SASL mechanism for SMTP.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpAuthPlain = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether PLAIN authentication should be used.

            This indicates whether the server uses the
            [PLAIN](http://tools.ietf.org/html/rfc4616)
            SASL mechanism for SMTP.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpUseAuth = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether authentication is needed

            This indicates whether the server uses authentication.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpUseSsl = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether SSL should be used.

            This indicates that SSL should be used on a dedicated port.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpUseTls = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Whether TLS should be used.

            This indicates that STARTTLS should be used on a standard port
            after the connection has been established to obtain a secure
            channel.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        EmailAddress = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The email address for the account or blank if there is no
            such address or if it isnt' known or isn't in a standard
            format.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        ImapHost = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The IMAP server to use.

            This may be in any of a number of recognized formats; an IPv6
            address, an IPv4 address, or a domain name. A port override
            may be specified in the usual way with a colon. Ports may be
            given as decimal numbers or symbolic names
            (cf. the `/etc/services` file).

            If a port override is not given, then applications should try
            to connect to port 993 if
            [](#opt-service.gnome-online-accounts.accounts._name_.ImapUseSsl) is `true` and port
            143 if not.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        ImapUserName = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The user name to use for logging in.

            This may be blank if username/password authentication isn't
            used or if the user name of the current user should be used.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        Name = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The full name of the user associated with
            [](#opt-service.gnome-online-accounts.accounts._name_.EmailAddress).

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpHost = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The SMTP server to use.

            This may be in any of a number of recognized formats; an IPv6
            address, an IPv4 address, or a domain name. A port override
            may be specified in the usual way with a colon. Ports may be
            given as decimal numbers or symbolic names
            (cf. the `/etc/services` file).

            If a port override is not given, then applications should try
            to connect to port 465 if
            [](#opt-service.gnome-online-accounts.accounts._name_.SmtpUseSsl) is `true` and port
            587 (or 25) if not.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        SmtpUserName = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            The user name to use for logging in.

            This may be blank if username/password authentication isn't
            used or if the user name of the current user should be used.

            Relevant for accounts using the imap_smtp provider.
          '';
        };
        MusicEnabled = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            If true, the account will not expose any
             [org.gnome.OnlineAccounts.Music](https://developer-old.gnome.org/goa/stable/gdbus-org.gnome.OnlineAccounts.Music.html) interface. If the account does not
             provide music-like capabilities, this property does nothing.

            Relevant for accounts using the lastfm provider.
          '';
        };
        Uri = mkOption {
          type = types.nullOr types.str;
          default = null;
          example = "https://cloud.example.com";
          description = ''
            URI of the nextcloud server to use.

            Relevant for accounts using the owncloud provider.
          '';
        };
      }];
    };
  };
in
{
  options = with lib ; {
    services.gnome-online-accounts.settings = mkOption {
      type = types.attrsOf (types.submodule accountType);
      description = ''
        Settings which are applied to `.config/goa-1.0/accounts.conf`.

        All valid settings for gnome-online-accounts 3.48.0 are covered by this module.

        This module is based on the source code of gnome-online-accounts, as there is no documentation for the settings in accounts.conf.
      '';
    };
  };
}
