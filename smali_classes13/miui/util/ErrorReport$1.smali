.class Lmiui/util/ErrorReport$1;
.super Landroid/os/AsyncTask;
.source "ErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ErrorReport;->sendReportRequestAsync(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
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

.field final synthetic val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    .registers 4

    iput-object p1, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$1;->val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

    iput p3, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/util/ErrorReport$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$1;->val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

    invoke-interface {v1}, Lmiui/util/ErrorReport$DataBuilder;->getData()Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    const/4 v0, 0x0

    return-object v0
.end method
