.class Lmiui/widget/AlphabetFastIndexer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {p1}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)V

    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
