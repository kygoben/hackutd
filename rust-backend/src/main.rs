#[macro_use] extern crate rocket;

use rocket::response::content::RawHtml;

#[get("/")]
fn index() -> RawHtml<&'static str> {
    RawHtml(r#"
<script src="https://unpkg.com/htmx.org@1.9.7"></script>
<button hx-post="/clicked" hx-swap="outerHTML">
    Click Me
</button>
    "#)
}

#[post("/clicked")]
fn clicked() -> RawHtml<&'static str> {
    RawHtml(r#"
<div>I have been clicked on</div>
    "#)
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index, clicked])
}
