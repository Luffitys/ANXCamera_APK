.class Landroid/miui/AppOpsUtils$1;
.super Landroid/os/AsyncTask;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mode:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .registers 4

    iput p1, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    iput-object p2, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/miui/AppOpsUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    iget v2, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    if-eq v2, v3, :cond_16

    const/4 v4, 0x2

    if-eq v2, v4, :cond_16

    const/4 v4, 0x5

    if-eq v2, v4, :cond_14

    goto :goto_1a

    :cond_14
    const/4 v1, 0x2

    goto :goto_1a

    :cond_16
    const/4 v1, 0x1

    goto :goto_1a

    :cond_18
    const/4 v1, 0x3

    nop

    :goto_1a
    const-wide/32 v4, 0x8000

    const-string v2, "extra_permission"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "extra_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-string v3, "extra_package"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "extra_flags"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :try_start_39
    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Landroid/miui/AppOpsUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Landroid/miui/AppOpsUtils;->access$000()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception v3

    const-string v6, "AppOpsUtils"

    const-string v7, "SET_APPLICATION_PERMISSION : "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    return-object v2
.end method
