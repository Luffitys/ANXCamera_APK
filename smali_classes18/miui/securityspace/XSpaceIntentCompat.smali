.class public Lmiui/securityspace/XSpaceIntentCompat;
.super Ljava/lang/Object;
.source "XSpaceIntentCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareToLeaveUser(Landroid/content/Intent;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    return-void
.end method
