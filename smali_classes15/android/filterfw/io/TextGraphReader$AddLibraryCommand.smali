.class Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLibraryCommand"
.end annotation


# instance fields
.field private mLibraryName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 3

    # getter for: Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FilterFactory;->addFilterLibrary(Ljava/lang/String;)V

    return-void
.end method
