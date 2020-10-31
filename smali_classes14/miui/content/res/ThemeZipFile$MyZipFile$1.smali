.class Lmiui/content/res/ThemeZipFile$MyZipFile$1;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/content/res/ThemeZipFile$MyZipFile;

.field final synthetic val$this$0:Lmiui/content/res/ThemeZipFile;


# direct methods
.method constructor <init>(Lmiui/content/res/ThemeZipFile$MyZipFile;Lmiui/content/res/ThemeZipFile;)V
    .registers 3

    iput-object p1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile$1;->this$1:Lmiui/content/res/ThemeZipFile$MyZipFile;

    iput-object p2, p0, Lmiui/content/res/ThemeZipFile$MyZipFile$1;->val$this$0:Lmiui/content/res/ThemeZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile$1;->this$1:Lmiui/content/res/ThemeZipFile$MyZipFile;

    # invokes: Lmiui/content/res/ThemeZipFile$MyZipFile;->initCache()V
    invoke-static {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->access$000(Lmiui/content/res/ThemeZipFile$MyZipFile;)V

    return-void
.end method
