.class public final synthetic Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;

    invoke-direct {v0}, Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;->INSTANCE:Landroid/view/-$$Lambda$Rl1VZmNJ0VZDLK0BAbaVGis0rrA;

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

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method
