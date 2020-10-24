.class Lcom/miui/internal/server/ErrorReportManager$Holder;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final INSTANCE:Lcom/miui/internal/server/ErrorReportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/internal/server/ErrorReportManager;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/server/ErrorReportManager;-><init>(Landroid/content/Context;Lcom/miui/internal/server/ErrorReportManager$1;)V

    sput-object v0, Lcom/miui/internal/server/ErrorReportManager$Holder;->INSTANCE:Lcom/miui/internal/server/ErrorReportManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
