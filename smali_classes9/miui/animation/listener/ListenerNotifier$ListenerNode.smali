.class Lmiui/animation/listener/ListenerNotifier$ListenerNode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bindTag:Ljava/lang/Object;

.field listener:Lmiui/animation/listener/TransitionListener;

.field next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

.field prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

.field relatedProperty:[Lmiui/animation/property/FloatProperty;

.field toTag:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/listener/ListenerNotifier$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier$ListenerNode;-><init>()V

    return-void
.end method
