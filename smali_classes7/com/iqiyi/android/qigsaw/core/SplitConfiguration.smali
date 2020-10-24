.class public Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final forbiddenWorkProcesses:[Ljava/lang/String;

.field final installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

.field final loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

.field final obtainUserConfirmationDialogClass:Ljava/lang/Class;

.field final splitLoadMode:I

.field final uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

.field final updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

.field final verifySignature:Z

.field final workProcesses:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "forbiddenWorkProcesses and workProcesses can\'t be set at the same time, you should choose one of them."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$300(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->splitLoadMode:I

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->forbiddenWorkProcesses:[Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$400(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$500(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$600(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$700(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$800(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->workProcesses:[Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$900(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->verifySignature:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 2

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V

    return-object v0
.end method
