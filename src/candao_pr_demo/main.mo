import Blob "mo:base/Blob";
import Text "mo:base/Text";

actor {
    public type HeaderField = (Text, Text);

    public type HttpResponse = {
        body : [Nat8];
        headers : [HeaderField];
        status_code : Nat16;
    };

    public shared query func http_request() : async HttpResponse {
        return {
            body = Blob.toArray(Text.encodeUtf8(
"<html lang=\"en\">" #
"  <head>" #
"    <meta charset=\"UTF-8\" />" #
"    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />" #
"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />" #
"    <title>Hello Encode x DFINITY</title>" #
"    <script src=\"https://cdn-tailwindcss.vercel.app/\"></script>" #
"  </head>" #
"  <body class=\"flex min-h-screen items-center justify-center bg-indigo-50\">" #
"    <h1 class=\"text-indigo-700 text-center text-5xl font-bold drop-shadow-md underline\">" #
"      Hello Encode x DFINITY!" #
"    </h1>" #
"  </body>" #
"</html>"));
            headers = [ ("Content-Type", "text/html"),];
            status_code = 200;
        }
    };
};
