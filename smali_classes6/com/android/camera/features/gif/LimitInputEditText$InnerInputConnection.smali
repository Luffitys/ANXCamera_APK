.class Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source ""


# instance fields
.field private emoji:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/android/camera/features/gif/LimitInputEditText;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/LimitInputEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->this$0:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    const-string p1, "[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\ud83e\udd00-\ud83e\udfff]|[\u2600-\u27ff]"

    const/16 p2, 0x42

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->emoji:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->emoji:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method
