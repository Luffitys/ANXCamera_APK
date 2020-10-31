.class public Lmiui/security/SecurityInjectManager;
.super Ljava/lang/Object;
.source "SecurityInjectManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blockSelfNetwork(Z)V
.end method

.method public static native hookFunctions(JI)Z
.end method

.method public static native isNetworkBlocked()Z
.end method
