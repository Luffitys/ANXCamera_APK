.class Lcom/miui/internal/util/DirectIndexedFileExtractor$1;
.super Landroid/os/AsyncTask;
.source "DirectIndexedFileExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/util/DirectIndexedFileExtractor;->tryExtractDirectIndexedFiles(Landroid/content/Context;)V
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
.field final synthetic val$assetFiles:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    const-string v4, ".idf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/miui/internal/util/DirectIndexedFileExtractor;->extractDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method
