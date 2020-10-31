.class Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimaState"
.end annotation


# instance fields
.field highLight:Z

.field middleY:I

.field scale:F

.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;

.field translationX:F

.field view:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/AlphabetFastIndexer;Lmiui/widget/AlphabetFastIndexer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer$ItemAnimaState;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    return-void
.end method
