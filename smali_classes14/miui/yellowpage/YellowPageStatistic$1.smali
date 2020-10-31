.class Lmiui/yellowpage/YellowPageStatistic$1;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$displayAdName:Ljava/lang/String;

.field final synthetic val$hit:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$show:Z

.field final synthetic val$type:I

.field final synthetic val$yid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    iput p3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    iput-boolean p4, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    iput-object p5, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    iput-object p6, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    iput-boolean p7, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "view_yp_in_phone_call"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$number:Ljava/lang/String;

    const-string v3, "number"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$hit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "hit"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$yid:Ljava/lang/String;

    const-string v3, "yid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$displayAdName:Ljava/lang/String;

    const-string v3, "displayAdName"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$show:Z

    if-eqz v2, :cond_48

    const-string v2, "1"

    goto :goto_4a

    :cond_48
    const-string v2, "0"

    :goto_4a
    const-string v3, "show"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_50
    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5e} :catch_66
    .catchall {:try_start_50 .. :try_end_5e} :catchall_64

    if-eqz v2, :cond_71

    :goto_60
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_71

    :catchall_64
    move-exception v3

    goto :goto_72

    :catch_66
    move-exception v3

    :try_start_67
    const-string v4, "YellowPageStatistic"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_64

    if-eqz v2, :cond_71

    goto :goto_60

    :cond_71
    :goto_71
    return-void

    :goto_72
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_77
    throw v3
.end method
