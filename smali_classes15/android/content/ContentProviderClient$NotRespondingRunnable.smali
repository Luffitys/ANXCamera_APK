.class Landroid/content/ContentProviderClient$NotRespondingRunnable;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotRespondingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProviderClient;


# direct methods
.method private constructor <init>(Landroid/content/ContentProviderClient;)V
    .registers 2

    iput-object p1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected provider not responding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;
    invoke-static {v1}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentProviderClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/content/ContentProviderClient;->access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderClient$NotRespondingRunnable;->this$0:Landroid/content/ContentProviderClient;

    # getter for: Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;
    invoke-static {v1}, Landroid/content/ContentProviderClient;->access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->appNotRespondingViaProvider(Landroid/content/IContentProvider;)V

    return-void
.end method
