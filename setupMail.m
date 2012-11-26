%% 2012/11/27 Written by H. T.
%% Setup Mail Environment

%% MATLAB Version > R2011a
if 1
    mail = 'your_address@gmail.com';
    password = 'your_password' ;
    setpref( 'Internet', 'SMTP_Server', 'smtp.gmail.com' );
    setpref('Internet','E_mail', mail);
    setpref('Internet', 'SMTP_Username', mail);
    setpref('Internet', 'SMTP_Password', password);
    props = java.lang.System.getProperties;
    props.setProperty('mail.smtp.auth', 'true');
    props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
    props.setProperty('mail.smtp.socketFactory.port', '465');
end

%% MATLAB Version <= R2011a
if 0
    setpref( 'Internet', 'SMTP_Server', 'smtp.gmail.com' );
    setpref( 'Internet', 'SMTP_Username', 'your_address@gmail.com' );
    setpref( 'Internet', 'SMTP_Password', 'your_password' );
    setpref( 'Internet', 'E_mail', 'your_address@gmail.com' );
end

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Send Command
% 
% sendmail( 'distination_address', 'Title', 'message' );
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%