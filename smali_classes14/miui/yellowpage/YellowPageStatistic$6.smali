.class Lmiui/yellowpage/YellowPageStatistic$6;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->clickSearchItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$index:Ljava/lang/String;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$keyword:Ljava/lang/String;

    iput-object p5, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$index:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "click_search_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$type:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$keyword:Ljava/lang/String;

    const-string v3, "keyword"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$index:Ljava/lang/String;

    const-string v3, "index"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$6;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
