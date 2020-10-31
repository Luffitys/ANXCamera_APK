.class public final synthetic Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# static fields
.field public static final synthetic INSTANCE:Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;

    invoke-direct {v0}, Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;-><init>()V

    sput-object v0, Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;->INSTANCE:Landroid/widget/-$$Lambda$RemoteViews$Ld8XNSMwygf42608Zln-rjTyHy0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Landroid/widget/RemoteViews;->lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
