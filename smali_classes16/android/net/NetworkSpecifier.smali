.class public abstract Landroid/net/NetworkSpecifier;
.super Ljava/lang/Object;
.source "NetworkSpecifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public redact()Landroid/net/NetworkSpecifier;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-object p0
.end method
