.class Lmiui/maml/util/ConfigFile$SaveAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/ConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAsyncTask"
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
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/util/ConfigFile;


# direct methods
.method public constructor <init>(Lmiui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "content://com.miui.maml.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data"

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/maml/util/ConfigFile$SaveAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "saveConfigFile"

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    nop

    goto :goto_24

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-object v0
.end method
