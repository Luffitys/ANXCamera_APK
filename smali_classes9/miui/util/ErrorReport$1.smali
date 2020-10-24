.class Lmiui/util/ErrorReport$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    .locals 0

    iput-object p1, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$1;->val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

    iput p3, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/util/ErrorReport$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lmiui/util/ErrorReport$1;->val$dataBuilder:Lmiui/util/ErrorReport$DataBuilder;

    invoke-interface {v0}, Lmiui/util/ErrorReport$DataBuilder;->getData()Lorg/json/JSONObject;

    move-result-object v0

    iget p0, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-static {p1, v0, p0}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    const/4 p0, 0x0

    return-object p0
.end method
