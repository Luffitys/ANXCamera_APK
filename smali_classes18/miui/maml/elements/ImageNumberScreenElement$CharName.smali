.class Lmiui/maml/elements/ImageNumberScreenElement$CharName;
.super Ljava/lang/Object;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ImageNumberScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharName"
.end annotation


# instance fields
.field public ch:C

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/elements/ImageNumberScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->this$0:Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p2, p0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    iput-object p3, p0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    return-void
.end method
