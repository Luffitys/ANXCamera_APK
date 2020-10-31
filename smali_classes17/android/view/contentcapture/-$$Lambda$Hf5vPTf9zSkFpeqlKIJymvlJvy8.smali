.class public final synthetic Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;

    invoke-direct {v0}, Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;-><init>()V

    sput-object v0, Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;->INSTANCE:Landroid/view/contentcapture/-$$Lambda$Hf5vPTf9zSkFpeqlKIJymvlJvy8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/contentcapture/DataShareWriteAdapter;

    invoke-interface {p1}, Landroid/view/contentcapture/DataShareWriteAdapter;->onRejected()V

    return-void
.end method
