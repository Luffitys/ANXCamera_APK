.class final Lokhttp3/EventListener$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field final synthetic val$listener:Lokhttp3/EventListener;


# direct methods
.method constructor <init>(Lokhttp3/EventListener;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    iget-object p0, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;

    return-object p0
.end method
