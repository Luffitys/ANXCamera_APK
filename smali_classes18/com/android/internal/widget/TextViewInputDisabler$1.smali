.class Lcom/android/internal/widget/TextViewInputDisabler$1;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/TextViewInputDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/TextViewInputDisabler;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/TextViewInputDisabler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler$1;->this$0:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 8

    const-string v0, ""

    return-object v0
.end method
