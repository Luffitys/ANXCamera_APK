.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
