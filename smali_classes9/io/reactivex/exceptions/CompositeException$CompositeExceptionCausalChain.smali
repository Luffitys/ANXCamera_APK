.class final Lio/reactivex/exceptions/CompositeException$CompositeExceptionCausalChain;
.super Ljava/lang/RuntimeException;
.source ""


# static fields
.field static final MESSAGE:Ljava/lang/String; = "Chain of Causes for CompositeException In Order Received =>"

.field private static final serialVersionUID:J = 0x35c7853e403cebd2L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    const-string p0, "Chain of Causes for CompositeException In Order Received =>"

    return-object p0
.end method
