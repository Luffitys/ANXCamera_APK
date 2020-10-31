.class Lmiui/content/res/IconCustomizer$Holder;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field sModIconEnabled:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/MiuiThemeHelper;->isModIconEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/content/res/IconCustomizer$Holder;->sModIconEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/IconCustomizer$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/content/res/IconCustomizer$Holder;-><init>()V

    return-void
.end method
