.class Lmiui/maml/elements/FolmeConfigElement$ConfigData;
.super Ljava/lang/Object;
.source "FolmeConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/FolmeConfigElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigData"
.end annotation


# instance fields
.field public mDelayExp:Lmiui/maml/data/Expression;

.field public mEaseExp:[Lmiui/maml/data/Expression;

.field public mFromSpeedExp:Lmiui/maml/data/Expression;

.field public mOnBeginCallbackExp:[Lmiui/maml/data/Expression;

.field public mOnCompleteCallbackExp:[Lmiui/maml/data/Expression;

.field public mOnUpdateCallbackExp:[Lmiui/maml/data/Expression;

.field public mPropertyExp:[Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/FolmeConfigElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/FolmeConfigElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->this$0:Lmiui/maml/elements/FolmeConfigElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/FolmeConfigElement;Lmiui/maml/elements/FolmeConfigElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lmiui/maml/elements/FolmeConfigElement;)V

    return-void
.end method
