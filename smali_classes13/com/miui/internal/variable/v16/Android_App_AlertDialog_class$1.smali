.class Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;
.super Ljava/lang/Object;
.source "Android_App_AlertDialog_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/AlertDialog;Landroid/content/Context;IZ)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;IZ)V

    return-void
.end method

.method public init(Landroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 12

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_class;->handle_init_(JLandroid/app/AlertDialog;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
