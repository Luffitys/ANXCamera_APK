.class Lcom/miui/internal/server/DataUpdateManager$Holder;
.super Ljava/lang/Object;
.source "DataUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/DataUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/internal/server/DataUpdateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/miui/internal/server/DataUpdateManager;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/server/DataUpdateManager;-><init>(Landroid/content/Context;Lcom/miui/internal/server/DataUpdateManager$1;)V

    sput-object v0, Lcom/miui/internal/server/DataUpdateManager$Holder;->INSTANCE:Lcom/miui/internal/server/DataUpdateManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
