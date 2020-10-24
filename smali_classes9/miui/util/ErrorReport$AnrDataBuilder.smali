.class Lmiui/util/ErrorReport$AnrDataBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/util/ErrorReport$DataBuilder;


# instance fields
.field private iContext:Landroid/content/Context;

.field private iPackageName:Ljava/lang/String;

.field private iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iPackageName:Ljava/lang/String;

    iget-object p0, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {v0, v1, p0}, Lmiui/util/ErrorReport;->getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
