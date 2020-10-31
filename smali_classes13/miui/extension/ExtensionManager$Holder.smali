.class Lmiui/extension/ExtensionManager$Holder;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/extension/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/extension/ExtensionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/extension/ExtensionManager;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/extension/ExtensionManager;-><init>(Landroid/content/Context;Lmiui/extension/ExtensionManager$1;)V

    sput-object v0, Lmiui/extension/ExtensionManager$Holder;->INSTANCE:Lmiui/extension/ExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
