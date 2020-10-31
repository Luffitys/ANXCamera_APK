.class Lmiui/maml/elements/AnimConfigElement$ConfigData;
.super Ljava/lang/Object;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AnimConfigElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigData"
.end annotation


# instance fields
.field public mDelay:Lmiui/maml/data/IndexedVariable;

.field public mEase:Lmiui/maml/data/IndexedVariable;

.field public mEaseLen:Lmiui/maml/data/IndexedVariable;

.field public mFromSpeed:Lmiui/maml/data/IndexedVariable;

.field public mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

.field public mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

.field public mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

.field public mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

.field public mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

.field public mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

.field public mProperty:Lmiui/maml/data/IndexedVariable;

.field public mPropertyLen:Lmiui/maml/data/IndexedVariable;

.field final synthetic this$0:Lmiui/maml/elements/AnimConfigElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AnimConfigElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/AnimConfigElement$ConfigData;->this$0:Lmiui/maml/elements/AnimConfigElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AnimConfigElement;Lmiui/maml/elements/AnimConfigElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lmiui/maml/elements/AnimConfigElement;)V

    return-void
.end method
