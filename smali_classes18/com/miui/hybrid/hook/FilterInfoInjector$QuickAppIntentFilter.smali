.class public Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;
.super Landroid/content/IntentFilter;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickAppIntentFilter"
.end annotation


# instance fields
.field private appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

.field private uriPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/android/internal/app/QuickAppResolveInfo;
    .registers 2

    iget-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

    return-object v0
.end method

.method public getUriPattern()Ljava/util/regex/Pattern;
    .registers 2

    iget-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->uriPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method setAppInfo(Lcom/android/internal/app/QuickAppResolveInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->appInfo:Lcom/android/internal/app/QuickAppResolveInfo;

    return-void
.end method

.method setUriPattern(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->uriPattern:Ljava/util/regex/Pattern;

    return-void
.end method
