.class public Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/gif/GifEditLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    const-string v0, ""

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v3

    move v2, v1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v1, v5, :cond_8

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v8, 0xa

    if-ne v5, v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v9, v5}, Lcom/android/camera/features/gif/GifEditLayout;->access$500(Lcom/android/camera/features/gif/GifEditLayout;C)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    goto :goto_2

    :cond_5
    move v9, v7

    :goto_2
    add-int/2addr v2, v9

    if-le v2, v6, :cond_6

    move v2, v6

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v6}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_7

    const/16 v5, 0x10

    if-lt v2, v5, :cond_7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v7

    if-eq v1, v5, :cond_7

    iget-object v4, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v4}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v7

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_9

    move v3, v7

    :cond_9
    invoke-static {v1, v3}, Lcom/android/camera/features/gif/GifEditLayout;->access$600(Lcom/android/camera/features/gif/GifEditLayout;Z)V

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_6

    :cond_b
    :goto_5
    if-ne v2, v6, :cond_c

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_c
    if-nez v2, :cond_d

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {p2}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->access$102(Lcom/android/camera/features/gif/GifEditLayout;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gif"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
