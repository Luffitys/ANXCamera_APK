.class public Lmiui/ddm/DdmHandleAppName;
.super Ljava/lang/Object;
.source "DdmHandleAppName.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getNames()Landroid/ddm/DdmHandleAppName$Names;

    move-result-object v0

    invoke-virtual {v0}, Landroid/ddm/DdmHandleAppName$Names;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
