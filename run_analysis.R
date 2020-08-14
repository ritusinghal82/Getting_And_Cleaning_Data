X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt")
subject <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt")
features <- read.table("UCI_HAR_Dataset/features.txt")
feature_names <- features[,2]
colnames(X_train) <- feature_names
valid_names <- make.names(names = names(X_train), unique=TRUE, allow_=TRUE)
colnames(X_train) <- valid_names
names(subject)[names(subject)=="V1"] <- "subject"
names(y_train)[names(y_train)=="V1"] <- "activity"
y_train <- set_labels(
   y_train,
   labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"),
   force.labels = TRUE,
   force.values = TRUE
   )
y_train <- as_label(y_train,keep.labels = TRUE)
trainMerged <- do.call("cbind", list(subject,y_train,X_train))
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt")
subject <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt")
colnames(X_test) <- valid_names
names(subject)[names(subject)=="V1"] <- "subject"
names(y_test)[names(y_test)=="V1"] <- "activity"
y_test <- set_labels(
  y_test,
  labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"),
  force.labels = TRUE,
  force.values = TRUE
)
y_test <- as_label(y_test,keep.labels = TRUE)
testMerged <- do.call("cbind", list(subject,y_test,X_test))
dataMerged <- do.call("rbind", list(trainMerged,testMerged))
dataMerged_step2 <- select(dataMerged,contains(c("subject", "activity","mean","std", "Mean")))
dataMerged_step2 <- select(dataMerged_step2,-contains(c("meanFreq", "angle")))
names_step2 <- names(dataMerged_step2)
temp <- gsub("([\\.])\\1+", "_", names_step2, perl=TRUE)
temp <- gsub("\\.","_",temp)
temp <- tolower(temp)
temp <- gsub("_$","",temp)
colnames(dataMerged_step2) <- temp

tidy_dataset <- dataMerged_step2 %>%
  group_by(subject,activity, add = TRUE) %>%
  summarise_each(funs(mean))

temp <- names(tidy_dataset)
temp <- gsub("std","std_mean",temp)
colnames(tidy_dataset) <- temp

write.table(tidy_dataset,file = "./tidy_dataset.txt", row.name = FALSE)
