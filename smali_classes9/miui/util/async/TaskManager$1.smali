.class Lmiui/util/async/TaskManager$1;
.super Lmiui/util/SoftReferenceSingleton;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/TaskManager$1;->createInstance()Lmiui/util/async/TaskManager;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance()Lmiui/util/async/TaskManager;
    .locals 0

    new-instance p0, Lmiui/util/async/TaskManager;

    invoke-direct {p0}, Lmiui/util/async/TaskManager;-><init>()V

    return-object p0
.end method
