.class Landroid/content/ContentProvider$1;
.super Landroid/os/AsyncTask;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$func:Landroid/content/ContentProvider$PipeDataWriter;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$opts:Landroid/os/Bundle;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 8

    iput-object p1, p0, Landroid/content/ContentProvider$1;->this$0:Landroid/content/ContentProvider;

    iput-object p2, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    iput-object p3, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Landroid/content/ContentProvider$1;->val$func:Landroid/content/ContentProvider$PipeDataWriter;

    iget-object v1, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/content/ContentProvider$1;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/content/ContentProvider$1;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ContentProvider$1;->val$opts:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/content/ContentProvider$1;->val$args:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Landroid/content/ContentProvider$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    :try_start_12
    iget-object v0, p0, Landroid/content/ContentProvider$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "ContentProvider"

    const-string v2, "Failure closing pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method
