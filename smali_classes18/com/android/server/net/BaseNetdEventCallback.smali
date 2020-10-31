.class public Lcom/android/server/net/BaseNetdEventCallback;
.super Landroid/net/INetdEventCallback$Stub;
.source "BaseNetdEventCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 6

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10

    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    return-void
.end method
