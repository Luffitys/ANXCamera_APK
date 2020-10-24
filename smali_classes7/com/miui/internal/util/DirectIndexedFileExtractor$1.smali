.class Lcom/miui/internal/util/DirectIndexedFileExtractor$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic val$assetFiles:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, ".idf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
