.class Lmiui/maml/component/MamlDrawable$1;
.super Ljava/lang/Object;
.source "MamlDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlDrawable;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlDrawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/component/MamlDrawable$1;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable$1;->this$0:Lmiui/maml/component/MamlDrawable;

    # invokes: Lmiui/maml/component/MamlDrawable;->doPause()V
    invoke-static {v0}, Lmiui/maml/component/MamlDrawable;->access$000(Lmiui/maml/component/MamlDrawable;)V

    return-void
.end method
