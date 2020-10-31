.class public Lmiui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRootFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lmiui/maml/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    :cond_b
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    :cond_b
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-object v0
.end method
