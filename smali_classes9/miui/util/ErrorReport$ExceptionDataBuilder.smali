.class Lmiui/util/ErrorReport$ExceptionDataBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/util/ErrorReport$DataBuilder;


# instance fields
.field private iContext:Landroid/content/Context;

.field private iCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field private iPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iPackageName:Ljava/lang/String;

    iget-object p0, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->iCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v0, v1, p0}, Lmiui/util/ErrorReport;->getExceptionData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
