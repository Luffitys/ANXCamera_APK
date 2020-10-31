.class Lmiui/util/ErrorReport$AnrDataBuilder;
.super Ljava/lang/Object;
.source "ErrorReport.java"

# interfaces
.implements Lmiui/util/ErrorReport$DataBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnrDataBuilder"
.end annotation


# instance fields
.field private iContext:Landroid/content/Context;

.field private iPackageName:Ljava/lang/String;

.field private iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iPackageName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/ErrorReport$AnrDataBuilder;->iState:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
