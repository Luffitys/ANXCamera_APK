.class public Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;
.super Lcom/miui/internal/variable/api/AbstractExtension;
.source "Android_App_AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/api/AbstractExtension<",
        "Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;

    invoke-direct {v0}, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/api/AbstractExtension;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Extension;

    return-object v0
.end method
